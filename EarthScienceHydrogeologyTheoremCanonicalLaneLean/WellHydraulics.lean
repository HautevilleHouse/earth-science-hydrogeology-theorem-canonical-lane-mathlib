import canonicalLaneMathlib.AdmissibleClass

/-!
# Well Hydraulics Package
-/

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure WellHydraulicsPackage (A : AdmissibleClass) where
  theisEquation : Prop
  drawdownComputed : Prop
  aquiferParametersInverted : Prop
  pumpingTestDesigned : Prop
  boundaryEffectsAccounted : Prop

def WellHydraulicsClosed {A : AdmissibleClass} (W : WellHydraulicsPackage A) : Prop :=
  W.theisEquation ∧ W.drawdownComputed ∧ W.aquiferParametersInverted ∧
  W.pumpingTestDesigned ∧ W.boundaryEffectsAccounted

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse