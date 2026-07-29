import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure SourceTermPackage {G : GeologicFormationPackage} (F : AquiferFlowPDEPackage G) where
  rechargeRate : Type u
  injectionExtractionWells : Type v
  sourceSinkDistribution : Prop
  massConservation : Prop
  boundaryFluxConsistency : Prop

structure SourceTermEvidence {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} (S : SourceTermPackage F) where
  sourceSinkDistributionClosed : S.sourceSinkDistribution
  massConservationClosed : S.massConservation
  boundaryFluxConsistencyClosed : S.boundaryFluxConsistency

def SourceTermClosed {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} (S : SourceTermPackage F) : Prop :=
  S.sourceSinkDistribution ∧ S.massConservation ∧ S.boundaryFluxConsistency

theorem source_term_closed_from_evidence {G : GeologicFormationPackage} {F : AquiferFlowPDEPackage G} (S : SourceTermPackage F) (E : SourceTermEvidence S) : SourceTermClosed S := by
  exact And.intro E.sourceSinkDistributionClosed (And.intro E.massConservationClosed E.boundaryFluxConsistencyClosed)

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse