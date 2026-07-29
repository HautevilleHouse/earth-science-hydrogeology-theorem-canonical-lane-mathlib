import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceHydrogeologyTheoremCanonicalLaneLean.HydrologicDomainObject
import HautevilleHouse.EarthScienceHydrogeologyTheoremCanonicalLaneLean.GroundwaterFlowEquation

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure FiniteDifferencePackage (A : Aquifer) where
  spatialDiscretization : Prop
  temporalDiscretization : Prop
  explicitScheme : Prop
  implicitScheme : Prop
  stabilityCondition : Prop
  convergenceOrder : Prop

def FiniteDifferenceClosed (A : Aquifer) (F : FiniteDifferencePackage A) : Prop :=
  F.spatialDiscretization ∧ F.temporalDiscretization ∧ (F.explicitScheme ∨ F.implicitScheme) ∧ F.stabilityCondition ∧ F.convergenceOrder

structure FiniteElementPackage (A : Aquifer) where
  elementType : Prop
  shapeFunctions : Prop
  stiffnessMatrixAssembly : Prop
  boundaryConditionImplementation : Prop
  solverConvergence : Prop

def FiniteElementClosed (A : Aquifer) (F : FiniteElementPackage A) : Prop :=
  F.elementType ∧ F.shapeFunctions ∧ F.stiffnessMatrixAssembly ∧ F.boundaryConditionImplementation ∧ F.solverConvergence

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse