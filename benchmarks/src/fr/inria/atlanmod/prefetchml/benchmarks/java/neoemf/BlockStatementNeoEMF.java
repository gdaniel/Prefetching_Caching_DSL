package fr.inria.atlanmod.prefetchml.benchmarks.java.neoemf;

import java.util.Arrays;
import java.util.List;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.gmt.modisco.java.neoemf.meta.JavaPackage;

import fr.inria.atlanmod.prefetchml.benchmarks.AbstractJavaTestNeoEMF;
import fr.inria.atlanmod.prefetchml.benchmarks.util.QueryUtil;

/**
 * Computes {@code BlockStatement} query on all the java-based models stored in
 * a NeoEMF resource.
 * <p>
 * The following OCL query is executed over each {@code Block} model element:
 * 
 * <pre>
 * {@code
 * self.statements
 * }
 * </pre>
 * 
 * @author Gwendal DANIEL (AtlanMod Team)
 *
 */
public class BlockStatementNeoEMF extends AbstractJavaTestNeoEMF {

    private static final String SCRIPT_NAME = "Q3";

    /**
     * Constructs a new {@link BlockStatementNeoEMF} with the given
     * {@code resourceName}, {@code xmiLocation}, {@code scriptSuffix}, and
     * {@code resourceType}.
     * 
     * @param resourceName
     *            the name of the {@link Resource} to benchmark
     * @param xmiLocation
     *            the location of the file containing a XMI version of the model
     *            to benchmark
     * @param scriptSuffix
     *            the suffix used to identify the PrefetchML plan to use
     * @param resourceType
     *            the type of the benchmarked {@link Resource}
     * 
     */
    public BlockStatementNeoEMF(String resourceName, String xmiLocation,
            String scriptSuffix, String resourceType) {
        super(resourceName, xmiLocation, scriptSuffix, resourceType);
    }

    @Override
    protected List<EClass> getQueryContexts() {
        return Arrays.asList(new EClass[]{JavaPackage.eINSTANCE.getBlock()});
    }

    @Override
    protected List<String> getTextualQueries() {
        return Arrays.asList(new String[]{QueryUtil.getBlockStatementsQuery()});
    }

    @Override
    protected String getPlanName() {
        return SCRIPT_NAME;
    }
}
