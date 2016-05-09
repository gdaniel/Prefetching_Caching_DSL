package fr.inria.atlanmod.prefetch.emf.aspectj.runtime;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;

import fr.inria.atlanmod.prefetch.core.PrefetchCore;
import fr.inria.atlanmod.prefetch.emf.aspectj.EGetAspect;
import fr.inria.atlanmod.prefetch.processor.emf.EMFRuleProcessorFactory;

public class EMFPrefetcherRuntime {
	
	private PrefetchCore pCore;
	
	public EMFPrefetcherRuntime(Object resourceStore) {
		pCore = new PrefetchCore(resourceStore, new EMFRuleProcessorFactory());
		EGetAspect.aspectOf().setPrefetcher(pCore);
	}
	
	public PrefetchCore getPCore() {
		return pCore;
	}
	
	
	/**
	 * Load the Prefetch script at the given URI, and enable it for the
	 * given resource
	 * @param prefetchScriptURI the URI of the script to load
	 * @param resource the resource to enable the prefetching for
	 */
	public void loadPrefetchScript(URI prefetchScriptURI, Resource resource) {
		pCore.loadPrefetchScript(prefetchScriptURI);
		// Enable the aspects
		EGetAspect.aspectOf().enable();
		pCore.getEventAPI().startingEvent(resource);
	}
	
}
