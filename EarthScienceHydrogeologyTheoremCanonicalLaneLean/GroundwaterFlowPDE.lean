import canonicalLaneMathlib.AdmissibleClass

/-!
# Groundwater Flow PDE Package
-/

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure GroundwaterFlowPDEPackage (A : AdmissibleClass) where
  darcyEquation : Prop
  massConservation : Prop
  hamiltonDeTurckGaugeChoice : Prop
  stronglyParabolicReduction : Prop
  deTurckVectorField : Prop
  pullbackRecoversGroundwaterFlow : Prop
  uniquenessCompatibility : Prop

def GroundwaterFlowPDEClosed {A : AdmissibleClass} (F : GroundwaterFlowPDEPackage A) : Prop :=
  F.darcyEquation ∧ F.massConservation ∧ F.hamiltonDeTurckGaugeChoice ∧
  F.stronglyParabolicReduction ∧ F.deTurckVectorField ∧
  F.pullbackRecoversGroundwaterFlow ∧ F.uniquenessCompatibility

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse