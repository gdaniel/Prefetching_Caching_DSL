/*
* generated by Xtext
*/
grammar InternalPrefetching;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package fr.inria.atlanmod.neoemf.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package fr.inria.atlanmod.neoemf.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import fr.inria.atlanmod.neoemf.services.PrefetchingGrammarAccess;

}

@parser::members {
 
 	private PrefetchingGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(PrefetchingGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleModel
entryRuleModel 
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getModelAccess().getGroup()); }
(rule__Model__Group__0)
{ after(grammarAccess.getModelAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleCache
entryRuleCache 
:
{ before(grammarAccess.getCacheRule()); }
	 ruleCache
{ after(grammarAccess.getCacheRule()); } 
	 EOF 
;

// Rule Cache
ruleCache
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getCacheAccess().getGroup()); }
(rule__Cache__Group__0)
{ after(grammarAccess.getCacheAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleCacheProperties
entryRuleCacheProperties 
:
{ before(grammarAccess.getCachePropertiesRule()); }
	 ruleCacheProperties
{ after(grammarAccess.getCachePropertiesRule()); } 
	 EOF 
;

// Rule CacheProperties
ruleCacheProperties
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getCachePropertiesAccess().getGroup()); }
(rule__CacheProperties__Group__0)
{ after(grammarAccess.getCachePropertiesAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePlan
entryRulePlan 
:
{ before(grammarAccess.getPlanRule()); }
	 rulePlan
{ after(grammarAccess.getPlanRule()); } 
	 EOF 
;

// Rule Plan
rulePlan
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPlanAccess().getGroup()); }
(rule__Plan__Group__0)
{ after(grammarAccess.getPlanAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAfterRule
entryRuleAfterRule 
:
{ before(grammarAccess.getAfterRuleRule()); }
	 ruleAfterRule
{ after(grammarAccess.getAfterRuleRule()); } 
	 EOF 
;

// Rule AfterRule
ruleAfterRule
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getAfterRuleAccess().getGroup()); }
(rule__AfterRule__Group__0)
{ after(grammarAccess.getAfterRuleAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePrefetchingRule
entryRulePrefetchingRule 
:
{ before(grammarAccess.getPrefetchingRuleRule()); }
	 rulePrefetchingRule
{ after(grammarAccess.getPrefetchingRuleRule()); } 
	 EOF 
;

// Rule PrefetchingRule
rulePrefetchingRule
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getGroup()); }
(rule__PrefetchingRule__Group__0)
{ after(grammarAccess.getPrefetchingRuleAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSourcePattern
entryRuleSourcePattern 
:
{ before(grammarAccess.getSourcePatternRule()); }
	 ruleSourcePattern
{ after(grammarAccess.getSourcePatternRule()); } 
	 EOF 
;

// Rule SourcePattern
ruleSourcePattern
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getSourcePatternAccess().getGroup()); }
(rule__SourcePattern__Group__0)
{ after(grammarAccess.getSourcePatternAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleFilterPattern
entryRuleFilterPattern 
:
{ before(grammarAccess.getFilterPatternRule()); }
	 ruleFilterPattern
{ after(grammarAccess.getFilterPatternRule()); } 
	 EOF 
;

// Rule FilterPattern
ruleFilterPattern
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getFilterPatternAccess().getGroup()); }
(rule__FilterPattern__Group__0)
{ after(grammarAccess.getFilterPatternAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTargetPattern
entryRuleTargetPattern 
:
{ before(grammarAccess.getTargetPatternRule()); }
	 ruleTargetPattern
{ after(grammarAccess.getTargetPatternRule()); } 
	 EOF 
;

// Rule TargetPattern
ruleTargetPattern
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTargetPatternAccess().getGroup()); }
(rule__TargetPattern__Group__0)
{ after(grammarAccess.getTargetPatternAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleQualifiedName
entryRuleQualifiedName 
:
{ before(grammarAccess.getQualifiedNameRule()); }
	 ruleQualifiedName
{ after(grammarAccess.getQualifiedNameRule()); } 
	 EOF 
;

// Rule QualifiedName
ruleQualifiedName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getQualifiedNameAccess().getGroup()); }
(rule__QualifiedName__Group__0)
{ after(grammarAccess.getQualifiedNameAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}




// Rule CacheType
ruleCacheType
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCacheTypeAccess().getAlternatives()); }
(rule__CacheType__Alternatives)
{ after(grammarAccess.getCacheTypeAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Rule RefType
ruleRefType
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRefTypeAccess().getAlternatives()); }
(rule__RefType__Alternatives)
{ after(grammarAccess.getRefTypeAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Rule Moment
ruleMoment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMomentAccess().getAlternatives()); }
(rule__Moment__Alternatives)
{ after(grammarAccess.getMomentAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__CacheType__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCacheTypeAccess().getLRUEnumLiteralDeclaration_0()); }
(	'LRU' 
)
{ after(grammarAccess.getCacheTypeAccess().getLRUEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getCacheTypeAccess().getPREDICTIVEEnumLiteralDeclaration_1()); }
(	'PREDICTIVE' 
)
{ after(grammarAccess.getCacheTypeAccess().getPREDICTIVEEnumLiteralDeclaration_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RefType__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRefTypeAccess().getSTRONGEnumLiteralDeclaration_0()); }
(	'strong' 
)
{ after(grammarAccess.getRefTypeAccess().getSTRONGEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getRefTypeAccess().getSOFTEnumLiteralDeclaration_1()); }
(	'soft' 
)
{ after(grammarAccess.getRefTypeAccess().getSOFTEnumLiteralDeclaration_1()); }
)

    |(
{ before(grammarAccess.getRefTypeAccess().getWEAKEnumLiteralDeclaration_2()); }
(	'weak' 
)
{ after(grammarAccess.getRefTypeAccess().getWEAKEnumLiteralDeclaration_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Moment__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getMomentAccess().getON_STARTINGEnumLiteralDeclaration_0()); }
(	'on starting' 
)
{ after(grammarAccess.getMomentAccess().getON_STARTINGEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getMomentAccess().getON_LOADINGEnumLiteralDeclaration_1()); }
(	'on loading' 
)
{ after(grammarAccess.getMomentAccess().getON_LOADINGEnumLiteralDeclaration_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__Model__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__0__Impl
	rule__Model__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getCacheAssignment_0()); }
(rule__Model__CacheAssignment_0)
{ after(grammarAccess.getModelAccess().getCacheAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPlansAssignment_1()); }
(rule__Model__PlansAssignment_1)*
{ after(grammarAccess.getModelAccess().getPlansAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Cache__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Cache__Group__0__Impl
	rule__Cache__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Cache__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCacheAccess().getUseCacheKeyword_0()); }

	'use cache' 

{ after(grammarAccess.getCacheAccess().getUseCacheKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Cache__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Cache__Group__1__Impl
	rule__Cache__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Cache__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCacheAccess().getTypeAssignment_1()); }
(rule__Cache__TypeAssignment_1)
{ after(grammarAccess.getCacheAccess().getTypeAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Cache__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Cache__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Cache__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCacheAccess().getPropertiesAssignment_2()); }
(rule__Cache__PropertiesAssignment_2)?
{ after(grammarAccess.getCacheAccess().getPropertiesAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__CacheProperties__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CacheProperties__Group__0__Impl
	rule__CacheProperties__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CacheProperties__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCachePropertiesAccess().getLeftSquareBracketKeyword_0()); }

	'[' 

{ after(grammarAccess.getCachePropertiesAccess().getLeftSquareBracketKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CacheProperties__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CacheProperties__Group__1__Impl
	rule__CacheProperties__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CacheProperties__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCachePropertiesAccess().getTypeKeyword_1()); }

	'type' 

{ after(grammarAccess.getCachePropertiesAccess().getTypeKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CacheProperties__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CacheProperties__Group__2__Impl
	rule__CacheProperties__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CacheProperties__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCachePropertiesAccess().getRefTypeAssignment_2()); }
(rule__CacheProperties__RefTypeAssignment_2)
{ after(grammarAccess.getCachePropertiesAccess().getRefTypeAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CacheProperties__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CacheProperties__Group__3__Impl
	rule__CacheProperties__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__CacheProperties__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCachePropertiesAccess().getSizeKeyword_3()); }

	'size' 

{ after(grammarAccess.getCachePropertiesAccess().getSizeKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CacheProperties__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CacheProperties__Group__4__Impl
	rule__CacheProperties__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__CacheProperties__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCachePropertiesAccess().getSizeAssignment_4()); }
(rule__CacheProperties__SizeAssignment_4)
{ after(grammarAccess.getCachePropertiesAccess().getSizeAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CacheProperties__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CacheProperties__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CacheProperties__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCachePropertiesAccess().getRightSquareBracketKeyword_5()); }

	']' 

{ after(grammarAccess.getCachePropertiesAccess().getRightSquareBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__Plan__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Plan__Group__0__Impl
	rule__Plan__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Plan__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPlanAccess().getPlanKeyword_0()); }

	'plan' 

{ after(grammarAccess.getPlanAccess().getPlanKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Plan__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Plan__Group__1__Impl
	rule__Plan__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Plan__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPlanAccess().getPlanIdAssignment_1()); }
(rule__Plan__PlanIdAssignment_1)
{ after(grammarAccess.getPlanAccess().getPlanIdAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Plan__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Plan__Group__2__Impl
	rule__Plan__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Plan__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPlanAccess().getAfterAssignment_2()); }
(rule__Plan__AfterAssignment_2)?
{ after(grammarAccess.getPlanAccess().getAfterAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Plan__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Plan__Group__3__Impl
	rule__Plan__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Plan__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPlanAccess().getLeftCurlyBracketKeyword_3()); }

	'{' 

{ after(grammarAccess.getPlanAccess().getLeftCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Plan__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Plan__Group__4__Impl
	rule__Plan__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Plan__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPlanAccess().getRulesAssignment_4()); }
(rule__Plan__RulesAssignment_4)*
{ after(grammarAccess.getPlanAccess().getRulesAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Plan__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Plan__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Plan__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPlanAccess().getRightCurlyBracketKeyword_5()); }

	'}' 

{ after(grammarAccess.getPlanAccess().getRightCurlyBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__AfterRule__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AfterRule__Group__0__Impl
	rule__AfterRule__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AfterRule__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAfterRuleAccess().getAfterKeyword_0()); }

	'after' 

{ after(grammarAccess.getAfterRuleAccess().getAfterKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AfterRule__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AfterRule__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AfterRule__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAfterRuleAccess().getPlanIdAssignment_1()); }
(rule__AfterRule__PlanIdAssignment_1)
{ after(grammarAccess.getAfterRuleAccess().getPlanIdAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__PrefetchingRule__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group__0__Impl
	rule__PrefetchingRule__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getMomentAssignment_0()); }
(rule__PrefetchingRule__MomentAssignment_0)
{ after(grammarAccess.getPrefetchingRuleAccess().getMomentAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefetchingRule__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group__1__Impl
	rule__PrefetchingRule__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getSourcePatternAssignment_1()); }
(rule__PrefetchingRule__SourcePatternAssignment_1)?
{ after(grammarAccess.getPrefetchingRuleAccess().getSourcePatternAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefetchingRule__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group__2__Impl
	rule__PrefetchingRule__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getFetchKeyword_2()); }

	'fetch' 

{ after(grammarAccess.getPrefetchingRuleAccess().getFetchKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefetchingRule__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group__3__Impl
	rule__PrefetchingRule__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getTargetPatternAssignment_3()); }
(rule__PrefetchingRule__TargetPatternAssignment_3)
{ after(grammarAccess.getPrefetchingRuleAccess().getTargetPatternAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefetchingRule__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group__4__Impl
	rule__PrefetchingRule__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getGroup_4()); }
(rule__PrefetchingRule__Group_4__0)?
{ after(grammarAccess.getPrefetchingRuleAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefetchingRule__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getGroup_5()); }
(rule__PrefetchingRule__Group_5__0)?
{ after(grammarAccess.getPrefetchingRuleAccess().getGroup_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__PrefetchingRule__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group_4__0__Impl
	rule__PrefetchingRule__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getProbabilityAssignment_4_0()); }
(rule__PrefetchingRule__ProbabilityAssignment_4_0)
{ after(grammarAccess.getPrefetchingRuleAccess().getProbabilityAssignment_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefetchingRule__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getPercentSignKeyword_4_1()); }

	'%' 

{ after(grammarAccess.getPrefetchingRuleAccess().getPercentSignKeyword_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__PrefetchingRule__Group_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group_5__0__Impl
	rule__PrefetchingRule__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getLeftCurlyBracketKeyword_5_0()); }

	'{' 

{ after(grammarAccess.getPrefetchingRuleAccess().getLeftCurlyBracketKeyword_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefetchingRule__Group_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group_5__1__Impl
	rule__PrefetchingRule__Group_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getSubRulesAssignment_5_1()); }
(rule__PrefetchingRule__SubRulesAssignment_5_1)*
{ after(grammarAccess.getPrefetchingRuleAccess().getSubRulesAssignment_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PrefetchingRule__Group_5__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PrefetchingRule__Group_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__Group_5__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getRightCurlyBracketKeyword_5_2()); }

	'}' 

{ after(grammarAccess.getPrefetchingRuleAccess().getRightCurlyBracketKeyword_5_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__SourcePattern__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourcePattern__Group__0__Impl
	rule__SourcePattern__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SourcePattern__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourcePatternAccess().getPatternAssignment_0()); }
(rule__SourcePattern__PatternAssignment_0)
{ after(grammarAccess.getSourcePatternAccess().getPatternAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__SourcePattern__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__SourcePattern__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SourcePattern__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourcePatternAccess().getFilterAssignment_1()); }
(rule__SourcePattern__FilterAssignment_1)?
{ after(grammarAccess.getSourcePatternAccess().getFilterAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__FilterPattern__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FilterPattern__Group__0__Impl
	rule__FilterPattern__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FilterPattern__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFilterPatternAccess().getLeftSquareBracketKeyword_0()); }

	'[' 

{ after(grammarAccess.getFilterPatternAccess().getLeftSquareBracketKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FilterPattern__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FilterPattern__Group__1__Impl
	rule__FilterPattern__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__FilterPattern__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFilterPatternAccess().getStringPatternAssignment_1()); }
(rule__FilterPattern__StringPatternAssignment_1)
{ after(grammarAccess.getFilterPatternAccess().getStringPatternAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FilterPattern__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FilterPattern__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FilterPattern__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFilterPatternAccess().getRightSquareBracketKeyword_2()); }

	']' 

{ after(grammarAccess.getFilterPatternAccess().getRightSquareBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TargetPattern__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetPattern__Group__0__Impl
	rule__TargetPattern__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPattern__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetPatternAccess().getPatternAssignment_0()); }
(rule__TargetPattern__PatternAssignment_0)
{ after(grammarAccess.getTargetPatternAccess().getPatternAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TargetPattern__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TargetPattern__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPattern__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetPatternAccess().getFilterAssignment_1()); }
(rule__TargetPattern__FilterAssignment_1)?
{ after(grammarAccess.getTargetPatternAccess().getFilterAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QualifiedName__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group__0__Impl
	rule__QualifiedName__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
{ after(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
(rule__QualifiedName__Group_1__0)*
{ after(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QualifiedName__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group_1__0__Impl
	rule__QualifiedName__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }

	'.' 

{ after(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
{ after(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}







rule__Model__CacheAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getCacheCacheParserRuleCall_0_0()); }
	ruleCache{ after(grammarAccess.getModelAccess().getCacheCacheParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Model__PlansAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPlansPlanParserRuleCall_1_0()); }
	rulePlan{ after(grammarAccess.getModelAccess().getPlansPlanParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Cache__TypeAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCacheAccess().getTypeCacheTypeEnumRuleCall_1_0()); }
	ruleCacheType{ after(grammarAccess.getCacheAccess().getTypeCacheTypeEnumRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Cache__PropertiesAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCacheAccess().getPropertiesCachePropertiesParserRuleCall_2_0()); }
	ruleCacheProperties{ after(grammarAccess.getCacheAccess().getPropertiesCachePropertiesParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CacheProperties__RefTypeAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCachePropertiesAccess().getRefTypeRefTypeEnumRuleCall_2_0()); }
	ruleRefType{ after(grammarAccess.getCachePropertiesAccess().getRefTypeRefTypeEnumRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CacheProperties__SizeAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCachePropertiesAccess().getSizeINTTerminalRuleCall_4_0()); }
	RULE_INT{ after(grammarAccess.getCachePropertiesAccess().getSizeINTTerminalRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Plan__PlanIdAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPlanAccess().getPlanIdIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getPlanAccess().getPlanIdIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Plan__AfterAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPlanAccess().getAfterAfterRuleParserRuleCall_2_0()); }
	ruleAfterRule{ after(grammarAccess.getPlanAccess().getAfterAfterRuleParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Plan__RulesAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPlanAccess().getRulesPrefetchingRuleParserRuleCall_4_0()); }
	rulePrefetchingRule{ after(grammarAccess.getPlanAccess().getRulesPrefetchingRuleParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__AfterRule__PlanIdAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAfterRuleAccess().getPlanIdPlanCrossReference_1_0()); }
(
{ before(grammarAccess.getAfterRuleAccess().getPlanIdPlanIDTerminalRuleCall_1_0_1()); }
	RULE_ID{ after(grammarAccess.getAfterRuleAccess().getPlanIdPlanIDTerminalRuleCall_1_0_1()); }
)
{ after(grammarAccess.getAfterRuleAccess().getPlanIdPlanCrossReference_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__MomentAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getMomentMomentEnumRuleCall_0_0()); }
	ruleMoment{ after(grammarAccess.getPrefetchingRuleAccess().getMomentMomentEnumRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__SourcePatternAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getSourcePatternSourcePatternParserRuleCall_1_0()); }
	ruleSourcePattern{ after(grammarAccess.getPrefetchingRuleAccess().getSourcePatternSourcePatternParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__TargetPatternAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getTargetPatternTargetPatternParserRuleCall_3_0()); }
	ruleTargetPattern{ after(grammarAccess.getPrefetchingRuleAccess().getTargetPatternTargetPatternParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__ProbabilityAssignment_4_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getProbabilityINTTerminalRuleCall_4_0_0()); }
	RULE_INT{ after(grammarAccess.getPrefetchingRuleAccess().getProbabilityINTTerminalRuleCall_4_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PrefetchingRule__SubRulesAssignment_5_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPrefetchingRuleAccess().getSubRulesPrefetchingRuleParserRuleCall_5_1_0()); }
	rulePrefetchingRule{ after(grammarAccess.getPrefetchingRuleAccess().getSubRulesPrefetchingRuleParserRuleCall_5_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourcePattern__PatternAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourcePatternAccess().getPatternQualifiedNameParserRuleCall_0_0()); }
	ruleQualifiedName{ after(grammarAccess.getSourcePatternAccess().getPatternQualifiedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__SourcePattern__FilterAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSourcePatternAccess().getFilterFilterPatternParserRuleCall_1_0()); }
	ruleFilterPattern{ after(grammarAccess.getSourcePatternAccess().getFilterFilterPatternParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__FilterPattern__StringPatternAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFilterPatternAccess().getStringPatternSTRINGTerminalRuleCall_1_0()); }
	RULE_STRING{ after(grammarAccess.getFilterPatternAccess().getStringPatternSTRINGTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPattern__PatternAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetPatternAccess().getPatternQualifiedNameParserRuleCall_0_0()); }
	ruleQualifiedName{ after(grammarAccess.getTargetPatternAccess().getPatternQualifiedNameParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPattern__FilterAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTargetPatternAccess().getFilterFilterPatternParserRuleCall_1_0()); }
	ruleFilterPattern{ after(grammarAccess.getTargetPatternAccess().getFilterFilterPatternParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


