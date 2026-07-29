import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure PorousMedium where
  domain : Type
  porosity : Prop
  permeabilityField : Prop
  headField : Prop

def HydrogeologicSaturatedFlow (M : PorousMedium) : Prop :=
  M.porosity ∧ M.permeabilityField ∧ M.headField

structure Aquifer where
  medium : PorousMedium
  confiningUnit : Prop
  boundaryCondition : Prop
  storageCoefficient : Prop
  transmissivity : Prop
  wellSourceTerm : Prop

structure AquiferState where
  aquifer : Aquifer
  steadyFlow : Prop
  transientFlow : Prop

def HydrogeologyWitnessClosed (S : AquiferState) : Prop :=
  S.steadyFlow ∨ S.transientFlow

structure HydrogeologyAdmittedObject where
  aquiferState : AquiferState
  flowModelDerived : Prop
  boundaryConditionsFulfilled : Prop
  conclusion : boundaryConditionsFulfilled

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse