package fr.inria.atlanmod.prefetching.benchmarks.tests.emfprefetch;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.gmt.modisco.java.neoemf.meta.JavaPackage;
import org.eclipse.ocl.ParserException;
import org.eclipse.ocl.ecore.EcoreEnvironmentFactory;
import org.eclipse.ocl.ecore.OCL;
import org.junit.Before;
import org.junit.Test;

import fr.inria.atlanmod.prefetching.benchmarks.tests.AbstractTestCasePrefetchEMF;
import fr.inria.atlanmod.prefetchml.core.PrefetchCore;
import fr.inria.atlanmod.prefetchml.core.processor.emf.EventNotifierDelegateEList;

public class ClassToUnitTestPrefetchEMF extends AbstractTestCasePrefetchEMF {
	
	public ClassToUnitTestPrefetchEMF(String resourceName, String scriptSuffix) {
		super(resourceName, scriptSuffix);
	}

	protected String textualQuery;
	protected EClass eContext;
	
    @SuppressWarnings("unchecked")
	@Before
    public void setUp() {
    	super.setUp();
    	eContext = JavaPackage.eINSTANCE.getClassDeclaration();
        oclHelper.setContext(eContext);
        try {
        	textualQuery = ""
        			+ "if(self.typeParameters->size() = 0) then "
        			+ "	if(not(self.originalCompilationUnit.oclIsUndefined())) then "
        			+ "		let res : Set(ASTNode) = self.originalCompilationUnit.imports in "
        			+ "			res->union(self.originalCompilationUnit.comments) "
        			+ "			->union(self.comments) "
        			+ "			->union(self.commentsBeforeBody) "
        			+ "			->union(self.commentsAfterBody) "
        			+ "			->union(self.bodyDeclarations->select(e | e.oclIsTypeOf(FieldDeclaration)) "
        			+ "				->collect( f |  "
        			+ "					if(f.oclAsType(AbstractVariablesContainer).fragments->size() = 0) then "
        			+ "						null "
        			+ "					else "
        			+ "						f.oclAsType(AbstractVariablesContainer).fragments "
        			+ "					endif "
        			+ "				)->oclAsSet()->flatten())"
        			+ "			->union(self.bodyDeclarations->select(e | not(e.oclIsTypeOf(FieldDeclaration)))) "
        			+ "			->including(self.modifier) "
        			+ "			->including(self.superClass) "
        			+ "	else "
        			+ "		Set(ASTNode){} "
        			+ "	endif "
        			+ "else "
        			+ "	Set(ASTNode){} "
        			+ "endif";
            expression = oclHelper.createQuery(textualQuery);
        } catch (ParserException e) {
            e.printStackTrace();
        }
        this.query = ocl.createQuery(expression);
    }
    
    @Override
    protected String getScriptString() {
    	return "plans/bin/Q2";
    }
    
	@Test
    public void testClassToUnit_largeCache() {
		runtime.loadPrefetchScript(URI.createURI(this.getScriptLargeCacheString()),resource);
		performQuery();
    }
	
	@Test
	public void testClassToUnit_smallCache() {
		runtime.loadPrefetchScript(URI.createURI(this.getScriptSmallCacheString()),resource);
		performQuery();
	}
	
	@Test
	public void testClassToUnit_badPlan() {
		runtime.loadPrefetchScript(URI.createURI(this.getScriptBadCacheString()), resource);
		performQuery();
	}
    
    @SuppressWarnings("unchecked")
	private void performQuery() {
    	try {
    		System.out.println(this.getClass().getName());
    		Thread.currentThread().setPriority(Thread.MAX_PRIORITY);
    		PrefetchCore core = runtime.getPCore();
    		EList<EObject> blocks = resource.getAllInstances(eContext);
    		EList<EObject> prefetchableAllInstances = new EventNotifierDelegateEList<EObject>(blocks,core);
    		System.out.println("input size : " + blocks.size());
			System.out.println("Q1(1)");
			core.resetHitCount();
			core.resetMissCount();
			long begin = System.currentTimeMillis();
			query.evaluate(prefetchableAllInstances);
	        long end = System.currentTimeMillis();       
	        System.out.println("Done : " + (end-begin) + "ms");
	        System.out.println("Hits - " + core.getHitCount());
	        System.out.println("Misses - " + core.getMissCount());
	        
	        System.out.println("Q2");
	        this.ocl = OCL.newInstance(EcoreEnvironmentFactory.INSTANCE);
	        this.oclHelper = ocl.createOCLHelper();
	        oclHelper.setContext(eContext);
	        try {
	            expression = oclHelper.createQuery(textualQuery);
	        } catch (ParserException e) {
	            e.printStackTrace();
	        }
	        this.query = ocl.createQuery(expression);
	        blocks = resource.getAllInstances(eContext);
    		prefetchableAllInstances = new EventNotifierDelegateEList<EObject>(blocks,core);
	        begin = System.currentTimeMillis();
	        core.resetHitCount();
	        core.resetMissCount();
	        
	        query.evaluate(prefetchableAllInstances);
	        end = System.currentTimeMillis();
	        System.out.println("Done : " + (end-begin) + "ms");
	        System.out.println("Hits - " + core.getHitCount());
	        System.out.println("Misses - " + core.getMissCount());
	        System.out.println("cache size : "  + core.getActiveCache().size());
	       
    	} catch(Exception e) {
    		e.printStackTrace();
    	} finally {
    	    resource.close();
    	}
    }
}
