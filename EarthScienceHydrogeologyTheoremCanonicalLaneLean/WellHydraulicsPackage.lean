import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceHydrogeologyTheoremCanonicalLaneLean.HydrologicDomainObject
import HautevilleHouse.EarthScienceHydrogeologyTheoremCanonicalLaneLean.GroundwaterFlowEquation

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure TheisSolutionPackage (A : Aquifer) where
  confinedAquiferAssumption : Prop
  constantPumpingRate : Prop
  transmissivityStorageProduct : Prop
  drawdownFormula : Prop
  theisWellFunction : Prop

def TheisSolutionClosed (A : Aquifer) (T : TheisSolutionPackage A) : Prop :=
  T.confinedAquiferAssumption ∧ T.constantPumpingRate ∧ T.transmissivityStorageProduct ∧ T.drawdownFormula ∧ T.theisWellFunction

structure JacobMethodPackage (A : Aquifer) where
  semiLogApproximation : Prop
  straightLineSlope : Prop
  transmissivityEstimate : Prop
  storageCoefficientEstimate : Prop

def JacobMethodClosed (A : Aquifer) (J : JacobMethodPackage A) : Prop :=
  J.semiLogApproximation ∧ J.straightLineSlope ∧ J.transmissivityEstimate ∧ J.storageCoefficientEstimate

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse