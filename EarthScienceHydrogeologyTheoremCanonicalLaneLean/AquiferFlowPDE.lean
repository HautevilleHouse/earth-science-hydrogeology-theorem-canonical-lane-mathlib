import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure AquiferFlowPDEPackage (G : GeologicFormationPackage) where
  timeParameter : Type u
  hydraulicHead : timeParameter -> Type v
  initialHeadMatches : Prop
  darcyFluxFamily : Prop
  groundwaterFlowEquation : Prop
  boundaryConditions : Prop

structure AquiferFlowPDEEvidence {G : GeologicFormationPackage} (F : AquiferFlowPDEPackage G) where
  initialHeadMatchesClosed : F.initialHeadMatches
  darcyFluxFamilyClosed : F.darcyFluxFamily
  groundwaterFlowEquationClosed : F.groundwaterFlowEquation
  boundaryConditionsClosed : F.boundaryConditions

def AquiferFlowPDEClosed {G : GeologicFormationPackage} (F : AquiferFlowPDEPackage G) : Prop :=
  F.initialHeadMatches ∧ F.darcyFluxFamily ∧ F.groundwaterFlowEquation ∧ F.boundaryConditions

theorem aquifer_flow_pde_closed_from_evidence {G : GeologicFormationPackage} (F : AquiferFlowPDEPackage G) (E : AquiferFlowPDEEvidence F) : AquiferFlowPDEClosed F := by
  exact And.intro E.initialHeadMatchesClosed (And.intro E.darcyFluxFamilyClosed (And.intro E.groundwaterFlowEquationClosed E.boundaryConditionsClosed))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse