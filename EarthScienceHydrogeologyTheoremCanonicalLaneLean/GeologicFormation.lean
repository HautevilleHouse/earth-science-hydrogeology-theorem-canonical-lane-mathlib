import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure GeologicFormationPackage where
  domain : Type u
  topology : TopologicalSpace domain
  permeabilityField : Type v
  porosityField : Type w
  storageCoefficient : Type x
  heterogeneousAnisotropic : Prop
  darcyFlowValid : Prop
  permeabilityLawful : Prop
  porosityConservation : Prop
  storageCoefficientPositive : Prop

structure GeologicFormationEvidence (G : GeologicFormationPackage) where
  heterogeneousAnisotropicClosed : G.heterogeneousAnisotropic
  darcyFlowValidClosed : G.darcyFlowValid
  permeabilityLawfulClosed : G.permeabilityLawful
  porosityConservationClosed : G.porosityConservation
  storageCoefficientPositiveClosed : G.storageCoefficientPositive

def GeologicFormationClosed (G : GeologicFormationPackage) : Prop :=
  G.heterogeneousAnisotropic ∧ G.darcyFlowValid ∧ G.permeabilityLawful ∧ G.porosityConservation ∧ G.storageCoefficientPositive

theorem geologic_formation_closed_from_evidence (G : GeologicFormationPackage) (E : GeologicFormationEvidence G) : GeologicFormationClosed G := by
  exact And.intro E.heterogeneousAnisotropicClosed (And.intro E.darcyFlowValidClosed (And.intro E.permeabilityLawfulClosed (And.intro E.porosityConservationClosed E.storageCoefficientPositiveClosed)))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse