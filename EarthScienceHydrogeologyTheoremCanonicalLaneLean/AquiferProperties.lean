import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure AquiferPropertiesPackage (A : AdmissibleClass) where
  porosity : Prop
  permeability : Prop
  transmissivity : Prop
  storativity : Prop
  heterogeneity : Prop

structure AquiferPropertiesEvidence {A : AdmissibleClass} (P : AquiferPropertiesPackage A) where
  porosityClosed : P.porosity
  permeabilityClosed : P.permeability
  transmissivityClosed : P.transmissivity
  storativityClosed : P.storativity
  heterogeneityClosed : P.heterogeneity

def AquiferPropertiesClosed {A : AdmissibleClass} (P : AquiferPropertiesPackage A) : Prop :=
  P.porosity ∧ P.permeability ∧ P.transmissivity ∧ P.storativity ∧ P.heterogeneity

theorem aquifer_properties_closed_from_evidence {A : AdmissibleClass} (P : AquiferPropertiesPackage A) (E : AquiferPropertiesEvidence P) : AquiferPropertiesClosed P := by
  exact And.intro E.porosityClosed (And.intro E.permeabilityClosed (And.intro E.transmissivityClosed (And.intro E.storativityClosed E.heterogeneityClosed)))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse