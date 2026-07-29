import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceHydrogeologyTheoremCanonicalLaneLean.HydrologicDomainObject

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure DarcyLawPackage (A : Aquifer) where
  hydraulicConductivity : Prop
  hydraulicGradient : Prop
  darcyFlux : Prop
  proportionalityClosed : Prop

structure ContinuityPackage (A : Aquifer) where
  conservationOfMass : Prop
  storageEquation : Prop
  sourceSinkTerm : Prop
  massBalanceClosed : Prop

structure GroundwaterFlowEquationPackage (A : Aquifer) where
  darcy : DarcyLawPackage A
  continuity : ContinuityPackage A
  nonlinearDiffusivity : Prop
  pdeFormulation : Prop
  boundaryConditionMatch : Prop

def GroundwaterFlowEquationClosed (A : Aquifer) (G : GroundwaterFlowEquationPackage A) : Prop :=
  G.darcy.proportionalityClosed ∧ G.continuity.massBalanceClosed ∧ G.nonlinearDiffusivity ∧ G.pdeFormulation ∧ G.boundaryConditionMatch

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse