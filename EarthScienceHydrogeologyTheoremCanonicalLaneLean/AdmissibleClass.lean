import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure HydrogeologyAdmittedObject where
  aquiferRegion : Type
  porosity : Prop
  permeability : Prop
  darcyFlow : Prop
  conclusion : darcyFlow

structure AdmissibleClass where
  object : HydrogeologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HydrogeologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse