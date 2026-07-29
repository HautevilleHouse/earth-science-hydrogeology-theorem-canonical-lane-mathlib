import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure TransportSolutePackage {G : HydrogeologicParameterPackage}
    (F : AquiferFlowPDEPackage G) where
  soluteSpecies : Type u
  concentrationField : Type v
  advectionDispersionEquation : Prop
  retardationFactor : Prop
  decayChain : Prop

structure TransportSoluteEvidence {G : HydrogeologicParameterPackage}
    {F : AquiferFlowPDEPackage G} (T : TransportSolutePackage F) where
  advectionDispersionEquationClosed : T.advectionDispersionEquation
  retardationFactorClosed : T.retardationFactor
  decayChainClosed : T.decayChain

def TransportSoluteClosed {G : HydrogeologicParameterPackage}
    {F : AquiferFlowPDEPackage G} (T : TransportSolutePackage F) : Prop :=
  T.advectionDispersionEquation ∧ T.retardationFactor ∧ T.decayChain

theorem transport_solute_closed_from_evidence
    {G : HydrogeologicParameterPackage} {F : AquiferFlowPDEPackage G}
    (T : TransportSolutePackage F) (E : TransportSoluteEvidence T) :
    TransportSoluteClosed T := by
  exact And.intro E.advectionDispersionEquationClosed
    (And.intro E.retardationFactorClosed E.decayChainClosed)

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse