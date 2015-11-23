/**
 */
package fr.inria.atlanmod.neoemf.prefetching.impl;

import fr.inria.atlanmod.neoemf.prefetching.AfterRule;
import fr.inria.atlanmod.neoemf.prefetching.Plan;
import fr.inria.atlanmod.neoemf.prefetching.PrefetchingPackage;
import fr.inria.atlanmod.neoemf.prefetching.PrefetchingRule;

import java.util.Collection;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Plan</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link fr.inria.atlanmod.neoemf.prefetching.impl.PlanImpl#getPlanId <em>Plan Id</em>}</li>
 *   <li>{@link fr.inria.atlanmod.neoemf.prefetching.impl.PlanImpl#getAfter <em>After</em>}</li>
 *   <li>{@link fr.inria.atlanmod.neoemf.prefetching.impl.PlanImpl#getRules <em>Rules</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class PlanImpl extends MinimalEObjectImpl.Container implements Plan
{
  /**
   * The default value of the '{@link #getPlanId() <em>Plan Id</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getPlanId()
   * @generated
   * @ordered
   */
  protected static final String PLAN_ID_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getPlanId() <em>Plan Id</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getPlanId()
   * @generated
   * @ordered
   */
  protected String planId = PLAN_ID_EDEFAULT;

  /**
   * The cached value of the '{@link #getAfter() <em>After</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAfter()
   * @generated
   * @ordered
   */
  protected AfterRule after;

  /**
   * The cached value of the '{@link #getRules() <em>Rules</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRules()
   * @generated
   * @ordered
   */
  protected EList<PrefetchingRule> rules;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected PlanImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return PrefetchingPackage.Literals.PLAN;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getPlanId()
  {
    return planId;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setPlanId(String newPlanId)
  {
    String oldPlanId = planId;
    planId = newPlanId;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PrefetchingPackage.PLAN__PLAN_ID, oldPlanId, planId));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AfterRule getAfter()
  {
    return after;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetAfter(AfterRule newAfter, NotificationChain msgs)
  {
    AfterRule oldAfter = after;
    after = newAfter;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PrefetchingPackage.PLAN__AFTER, oldAfter, newAfter);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAfter(AfterRule newAfter)
  {
    if (newAfter != after)
    {
      NotificationChain msgs = null;
      if (after != null)
        msgs = ((InternalEObject)after).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PrefetchingPackage.PLAN__AFTER, null, msgs);
      if (newAfter != null)
        msgs = ((InternalEObject)newAfter).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PrefetchingPackage.PLAN__AFTER, null, msgs);
      msgs = basicSetAfter(newAfter, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PrefetchingPackage.PLAN__AFTER, newAfter, newAfter));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<PrefetchingRule> getRules()
  {
    if (rules == null)
    {
      rules = new EObjectContainmentEList<PrefetchingRule>(PrefetchingRule.class, this, PrefetchingPackage.PLAN__RULES);
    }
    return rules;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case PrefetchingPackage.PLAN__AFTER:
        return basicSetAfter(null, msgs);
      case PrefetchingPackage.PLAN__RULES:
        return ((InternalEList<?>)getRules()).basicRemove(otherEnd, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case PrefetchingPackage.PLAN__PLAN_ID:
        return getPlanId();
      case PrefetchingPackage.PLAN__AFTER:
        return getAfter();
      case PrefetchingPackage.PLAN__RULES:
        return getRules();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @SuppressWarnings("unchecked")
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case PrefetchingPackage.PLAN__PLAN_ID:
        setPlanId((String)newValue);
        return;
      case PrefetchingPackage.PLAN__AFTER:
        setAfter((AfterRule)newValue);
        return;
      case PrefetchingPackage.PLAN__RULES:
        getRules().clear();
        getRules().addAll((Collection<? extends PrefetchingRule>)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case PrefetchingPackage.PLAN__PLAN_ID:
        setPlanId(PLAN_ID_EDEFAULT);
        return;
      case PrefetchingPackage.PLAN__AFTER:
        setAfter((AfterRule)null);
        return;
      case PrefetchingPackage.PLAN__RULES:
        getRules().clear();
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case PrefetchingPackage.PLAN__PLAN_ID:
        return PLAN_ID_EDEFAULT == null ? planId != null : !PLAN_ID_EDEFAULT.equals(planId);
      case PrefetchingPackage.PLAN__AFTER:
        return after != null;
      case PrefetchingPackage.PLAN__RULES:
        return rules != null && !rules.isEmpty();
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuffer result = new StringBuffer(super.toString());
    result.append(" (planId: ");
    result.append(planId);
    result.append(')');
    return result.toString();
  }

} //PlanImpl
