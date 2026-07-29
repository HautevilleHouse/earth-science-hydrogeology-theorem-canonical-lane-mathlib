import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure DarcyLawPorousMediaPackage where
  medium : Type u
  hydraulicConductivity : medium -> Prop
  hydraulicGradient : Prop
  darcyVelocity : Prop
  darcyLawSatisfied : Prop

structure DarcyLawPorousMediaEvidence (D : DarcyLawPorousMediaPackage) where
  hydraulicConductivityClosed : D.hydraulicConductivity
  hydraulicGradientClosed : D.hydraulicGradient
  darcyVelocityClosed : D.darcyVelocity
  darcyLawSatisfiedClosed : D.darcyLawSatisfied

def DarcyLawPorousMediaClosed (D : DarcyLawPorousMediaPackage) : Prop :=
  D.hydraulicConductivity ∧
  D.hydraulicGradient ∧
  D.darcyVelocity ∧
  D.darcyLawSatisfied

theorem darcy_law_porous_media_closed_from_evidence
    (D : DarcyLawPorousMediaPackage) (E : DarcyLawPorousMediaEvidence D) :
    DarcyLawPorousMediaClosed D := by
  exact And.intro E.hydraulicConductivityClosed
    (And.intro E.hydraulicGradientClosed
      (And.intro E.darcyVelocityClosed E.darcyLawSatisfiedClosed))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse