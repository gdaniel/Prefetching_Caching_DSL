package fr.inria.atlanmod.prefetching.benchmarks.tests.neoprefetch;

import java.util.Collection;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.gmt.modisco.java.neoemf.meta.JavaPackage;
import org.eclipse.ocl.OCL;
import org.eclipse.ocl.ParserException;
import org.eclipse.ocl.ecore.EcoreEnvironmentFactory;
import org.junit.Before;
import org.junit.Test;

import fr.inria.atlanmod.neoemf.resources.impl.PersistentResourceImpl;
import fr.inria.atlanmod.prefetching.benchmarks.tests.AbstractTestCasePrefetch;

public class BlockToBlockUnitTestPrefetch extends AbstractTestCasePrefetch {
	
	protected String textualQuery;
	protected EClass eContext;
	
	public BlockToBlockUnitTestPrefetch(String resourceName) {
		super(resourceName);
	}
	
    @Before
    public void setUp() {
    	super.setUp();
    	eContext = JavaPackage.eINSTANCE.getBlock();
        oclHelper.setContext(eContext);
        try {
        	textualQuery = ""
        			+ "self.statements";
            expression = oclHelper.createQuery(textualQuery);
        } catch (ParserException e) {
            e.printStackTrace();
        }
        this.query = ocl.createQuery(expression);
    }
    
    @Override
    protected String getScriptString() {
    	return "plans/Q3.prefetch.bin";
    }
    
    @Test
    public void compilTypesUsages() {
    	try {
    		System.out.println(this.getClass().getName());
    		Thread.currentThread().setPriority(Thread.MAX_PRIORITY);
    		EList<EObject> blocks = resource.getAllInstances(eContext);
			long begin = System.currentTimeMillis();
			System.out.println("Q1(1)");
//	        @SuppressWarnings("unused")
			Object res = query.evaluate(blocks);
	        long end = System.currentTimeMillis();       
	        System.out.println("Done : " + (end-begin) + "ms");
	        System.out.println("Hits - " + pStore.hitCount);
	        System.out.println("Misses - " + pStore.missCount);
	        pStore.hitCount = 0;
	        pStore.missCount = 0;
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
	        begin = System.currentTimeMillis();
	        Object res2 = query.evaluate(blocks);
	        end = System.currentTimeMillis();
	        System.out.println("Done : " + (end-begin) + "ms");
	        System.out.println("Hits - " + pStore.hitCount);
	        System.out.println("Misses - " + pStore.missCount);
    	} catch(Exception e) {
    		e.printStackTrace();
    	} finally {
			PersistentResourceImpl.shutdownWithoutUnload((PersistentResourceImpl)resource);
    	}
    }
}
