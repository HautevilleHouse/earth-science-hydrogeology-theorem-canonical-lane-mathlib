import canonicalLaneMathlib.AdmissibleClass

/-!
# Aquifer Compressibility Package
-/

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure AquiferCompressibilityPackage (A : AdmissibleClass) where
  rockWaterCompressibility : Prop
  specificStorageDerived : Prop
  storativityDefined : Prop
  compressibilityBound : Prop
  porositySaturationRelation : Prop

def AquiferCompressibilityClosed {A : AdmissibleClass} (C : AquiferCompressibilityPackage A) : Prop :=
  C.rockWaterCompressibility ∧ C.specificStorageDerived ∧
  C.storativityDefined ∧ C.compressibilityBound ∧ C.porositySaturationRelation

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse