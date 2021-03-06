package fr.inria.atlanmod.prefetchml.core.tasks;

import java.util.List;

import fr.inria.atlanmod.prefetchml.core.processor.RuleProcessor;
import fr.inria.atlanmod.prefetchml.language.metamodel.AccessRule;

public class AccessRuleAction implements Runnable {
	
	private Object theSource;
	private List<AccessRule> theRules;
	private RuleProcessor theProcessor;
	
	public AccessRuleAction(Object source, List<AccessRule> aRules, RuleProcessor processor) {
		this.theSource = source;
		this.theRules = aRules;
		this.theProcessor = processor;
	}
	
	public void setSource(Object source) {
		this.theSource = source;
	}
	
	public void setRules(List<AccessRule> aRules) {
		this.theRules = aRules;
	}
	
	public void run() {
		this.theProcessor.processAccessRules(theSource,theRules);
	}

}
