import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure GroundwaterTransportEvidencePackage {G : HydrogeologicParameterPackage}
    {F : AquiferFlowPDEPackage G} (T : TransportSolutePackage G F) where
  soluteTransportEquation : Prop
  dispersivityTensor : Prop
  retardationFactor : Prop
  boundaryConditionsSatisfied : Prop

structure GroundwaterTransportEvidence {G : HydrogeologicParameterPackage}
    {F : AquiferFlowPDEPackage G} {T : TransportSolutePackage G F}
    (E : GroundwaterTransportEvidencePackage T) where
  soluteTransportEquationClosed : E.soluteTransportEquation
  dispersivityTensorClosed : E.dispersivityTensor
  retardationFactorClosed : E.retardationFactor
  boundaryConditionsSatisfiedClosed : E.boundaryConditionsSatisfied

def GroundwaterTransportClosed {G : HydrogeologicParameterPackage}
    {F : AquiferFlowPDEPackage G} {T : TransportSolutePackage G F}
    (E : GroundwaterTransportEvidencePackage T) : Prop :=
  E.soluteTransportEquation ∧ E.dispersivityTensor ∧
  E.retardationFactor ∧ E.boundaryConditionsSatisfied

theorem groundwater_transport_closed_from_evidence
    {G : HydrogeologicParameterPackage} {F : AquiferFlowPDEPackage G}
    {T : TransportSolutePackage G F} (E : GroundwaterTransportEvidencePackage T)
    (Ev : GroundwaterTransportEvidence E) : GroundwaterTransportClosed E := by
  exact And.intro Ev.soluteTransportEquationClosed
    (And.intro Ev.dispersivityTensorClosed
      (And.intro Ev.retardationFactorClosed Ev.boundaryConditionsSatisfiedClosed))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse