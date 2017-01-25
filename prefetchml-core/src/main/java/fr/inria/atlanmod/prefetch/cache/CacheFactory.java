package fr.inria.atlanmod.prefetch.cache;

import java.util.HashMap;
import java.util.Map;

import fr.inria.atlanmod.neoemf.prefetching.metamodel.prefetching.Cache;
import fr.inria.atlanmod.neoemf.prefetching.metamodel.prefetching.CacheType;
import fr.inria.atlanmod.prefetch.util.PrefetchLogger;

public class CacheFactory {

	public static Map<Object,Object> createCacheInstance(Cache cache) {
		if(cache.getType().equals(CacheType.LRU)) {
			PrefetchLogger.info("Creating LRU cache");
			if(cache.getProperties() != null 
					&& cache.getProperties().getSize() != 0) {
				// TODO Handle chunksize
				PrefetchLogger.info("Setting cache size to " + cache.getProperties().getSize());
				return new LRUCache(cache.getProperties().getSize(), 1);
			}
			else {
				PrefetchLogger.info("Setting cache size to default");
				return new LRUCache(1000000, 1);
			}
		}
		else if(cache.getType().equals(CacheType.MRU)) {
			PrefetchLogger.info("Creating MRU cache");
			if(cache.getProperties() != null
					&& cache.getProperties().getSize() != 0) {
				// TODO Handle chunksize
				PrefetchLogger.info("Setting cache size to " + cache.getProperties().getSize());
				return new MRUCache(cache.getProperties().getSize(), 1);
			}
			else {
				PrefetchLogger.info("Setting cache size to default");
				return new MRUCache(1000000, 1);
			}
		} else {
			PrefetchLogger.debug("No cache type provided, using regular HashMap");
			return new HashMap<Object, Object>();
		}
	
	}
}