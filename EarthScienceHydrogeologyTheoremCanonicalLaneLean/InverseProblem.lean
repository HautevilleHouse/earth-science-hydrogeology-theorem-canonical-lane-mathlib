import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure InverseProblemPackage {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} {S : SourceTermPackage F} {W : WellHydraulicsPackage S} {T : TransportModelPackage W} (C : CalibrationPackage T) where
  parameterEstimation : Prop
  regularizationMethod : Prop
  uncertaintyQuantification : Prop
  modelCalibration : Prop
  predictiveUncertainty : Prop

structure InverseProblemEvidence {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} {S : SourceTermPackage F} {W : WellHydraulicsPackage S} {T : TransportModelPackage W} {C : CalibrationPackage T} (I : InverseProblemPackage C) where
  parameterEstimationClosed : I.parameterEstimation
  regularizationMethodClosed : I.regularizationMethod
  uncertaintyQuantificationClosed : I.uncertaintyQuantification
  modelCalibrationClosed : I.modelCalibration
  predictiveUncertaintyClosed : I.predictiveUncertainty

def InverseProblemClosed {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} {S : SourceTermPackage F} {W : WellHydraulicsPackage S} {T : TransportModelPackage W} {C : CalibrationPackage T} (I : InverseProblemPackage C) : Prop :=
  I.parameterEstimation ∧ I.regularizationMethod ∧ I.uncertaintyQuantification ∧ I.modelCalibration ∧ I.predictiveUncertainty

theorem inverse_problem_closed_from_evidence {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} {S : SourceTermPackage F} {W : WellHydraulicsPackage S} {T : TransportModelPackage W} {C : CalibrationPackage T} (I : InverseProblemPackage C) (E : InverseProblemEvidence I) : InverseProblemClosed I := by
  exact And.intro E.parameterEstimationClosed (And.intro E.regularizationMethodClosed (And.intro E.uncertaintyQuantificationClosed (And.intro E.modelCalibrationClosed E.predictiveUncertaintyClosed)))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse