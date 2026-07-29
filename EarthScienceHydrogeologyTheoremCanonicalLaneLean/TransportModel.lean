import canonicalLaneMathlib.ImportedClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure TransportModelPackage {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} {S : SourceTermPackage F} (W : WellHydraulicsPackage S) where
  soluteConcentration : Type u
  advectionDispersionEquation : Prop
  retardationFactor : Prop
  firstOrderDecay : Prop
  initialBoundaryConditions : Prop

structure TransportModelEvidence {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} {S : SourceTermPackage F} {W : WellHydraulicsPackage S} (T : TransportModelPackage W) where
  advectionDispersionEquationClosed : T.advectionDispersionEquation
  retardationFactorClosed : T.retardationFactor
  firstOrderDecayClosed : T.firstOrderDecay
  initialBoundaryConditionsClosed : T.initialBoundaryConditions

def TransportModelClosed {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} {S : SourceTermPackage F} {W : WellHydraulicsPackage S} (T : TransportModelPackage W) : Prop :=
  T.advectionDispersionEquation ∧ T.retardationFactor ∧ T.firstOrderDecay ∧ T.initialBoundaryConditions

theorem transport_model_closed_from_evidence {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} {S : SourceTermPackage F} {W : WellHydraulicsPackage S} (T : TransportModelPackage W) (E : TransportModelEvidence T) : TransportModelClosed T := by
  exact And.intro E.advectionDispersionEquationClosed (And.intro E.retardationFactorClosed (And.intro E.firstOrderDecayClosed E.initialBoundaryConditionsClosed))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse