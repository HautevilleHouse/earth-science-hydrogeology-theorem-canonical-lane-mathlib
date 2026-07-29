import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure ContaminantTransportPackage (A : AdmissibleClass) where
  advectionDispersionEquation : Prop
  retardationFactor : Prop
  decayProcesses : Prop
  sourceTerm : Prop
  analyticalSolutions : Prop

structure ContaminantTransportEvidence {A : AdmissibleClass} (C : ContaminantTransportPackage A) where
  advectionDispersionEquationClosed : C.advectionDispersionEquation
  retardationFactorClosed : C.retardationFactor
  decayProcessesClosed : C.decayProcesses
  sourceTermClosed : C.sourceTerm
  analyticalSolutionsClosed : C.analyticalSolutions

def ContaminantTransportClosed {A : AdmissibleClass} (C : ContaminantTransportPackage A) : Prop :=
  C.advectionDispersionEquation ∧ C.retardationFactor ∧ C.decayProcesses ∧ C.sourceTerm ∧ C.analyticalSolutions

theorem contaminant_transport_closed_from_evidence {A : AdmissibleClass} (C : ContaminantTransportPackage A) (E : ContaminantTransportEvidence C) : ContaminantTransportClosed C := by
  exact And.intro E.advectionDispersionEquationClosed (And.intro E.retardationFactorClosed (And.intro E.decayProcessesClosed (And.intro E.sourceTermClosed E.analyticalSolutionsClosed)))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse