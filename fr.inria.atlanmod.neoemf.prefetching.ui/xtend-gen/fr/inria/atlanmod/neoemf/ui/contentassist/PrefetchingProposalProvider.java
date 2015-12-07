/**
 * generated by Xtext
 */
package fr.inria.atlanmod.neoemf.ui.contentassist;

import fr.inria.atlanmod.neoemf.ui.contentassist.AbstractPrefetchingProposalProvider;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext;
import org.eclipse.xtext.ui.editor.contentassist.ICompletionProposalAcceptor;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;

/**
 * see http://www.eclipse.org/Xtext/documentation.html#contentAssist on how to customize content assistant
 */
@SuppressWarnings("all")
public class PrefetchingProposalProvider extends AbstractPrefetchingProposalProvider {
  public void completeMetamodelImport_NsURI(final EObject model, final Assignment assignment, final ContentAssistContext context, final ICompletionProposalAcceptor acceptor) {
    super.completeMetamodelImport_NsURI(model, assignment, context, acceptor);
    Set<String> _keySet = EPackage.Registry.INSTANCE.keySet();
    final Procedure1<String> _function = new Procedure1<String>() {
      public void apply(final String e) {
        ICompletionProposal _createCompletionProposal = PrefetchingProposalProvider.this.createCompletionProposal((("\"" + e) + "\""), context);
        acceptor.accept(_createCompletionProposal);
      }
    };
    IterableExtensions.<String>forEach(_keySet, _function);
  }
}
