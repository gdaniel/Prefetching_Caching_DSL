package fr.inria.atlanmod.prefetch.emf.aspectj.test;


public class PackageTraversalTest {

//	protected PrefetchCore pCore;
//	protected String resourceFolderPath = "";
//	
//	protected JavaPackage jPackage = JavaPackage.eINSTANCE;
//	
//	protected Resource r;
//	
//	@Test
//	public void test() throws Exception {
//		Registry.INSTANCE.put(jPackage.getNsURI(), jPackage);
//		// Load the test model
//		ResourceSet rSet = new ResourceSetImpl();
//		rSet.getResourceFactoryRegistry().getExtensionToFactoryMap().put("xmi", new XMIResourceFactoryImpl());
//		r = rSet.createResource(URI.createURI(resourceFolderPath+"sample.xmi"));
//		r.load(Collections.EMPTY_MAP);
//		EMFPrefetcherRuntime runtime = new EMFPrefetcherRuntime(r);
//		runtime.loadPrefetchScript(URI.createURI("packageTraversal.prefetch.bin"),r);
//		Model m = (Model)r.getContents().get(0);
//		Package frPack = (Package)m.getOwnedElements().get(0);
//		Package kyanosPack = frPack.getOwnedPackages().get(0).getOwnedPackages().get(0).getOwnedPackages().get(0);
//		Object o = ((EObject)kyanosPack).eGet(jPackage.getPackage_OwnedPackages());
//		EObject testPack = ((EList<EObject>)o).get(0);
//		System.out.println(((Package)testPack).getName());
//		int count = 0;
//		for(EObject a : (EList<EObject>)testPack.eGet(jPackage.getPackage_OwnedElements())) {
//			System.out.println(((AbstractTypeDeclaration)a).getName());
//			for(EObject bd : (EList<EObject>)a.eGet(jPackage.getAbstractTypeDeclaration_BodyDeclarations())) {
//				System.out.println("\t" + bd.eGet(jPackage.getASTNode_OriginalCompilationUnit()));
//				count++;
//			}
//		}
//		System.out.println(count);
////		((EList<EObject>)result).get(0).eGet(jPackage.getPackage_OwnedElements());
//		synchronized (this) {
//			wait(1000000);
//		}
////		System.out.println(pCore.getActiveCache().toString());
////		System.out.println("test : " + result);
//		
//		// Load the pScript
////		runtime.loadPrefetchScript(prefetchScriptURI);
//	}
	

}
