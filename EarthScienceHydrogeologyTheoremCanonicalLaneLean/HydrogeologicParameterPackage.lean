import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure HydrogeologicParameterPackage where
  medium : Type u
  porosity : Prop
  permeability : Prop
  storativity : Prop
  hydraulicConductivity : Prop
  parametersConsistent : Prop

structure HydrogeologicParameterEvidence (P : HydrogeologicParameterPackage) where
  porosityClosed : P.porosity
  permeabilityClosed : P.permeability
  storativityClosed : P.storativity
  hydraulicConductivityClosed : P.hydraulicConductivity
  parametersConsistentClosed : P.parametersConsistent

def HydrogeologicParameterClosed (P : HydrogeologicParameterPackage) : Prop :=
  P.porosity ∧ P.permeability ∧ P.storativity ∧ P.hydraulicConductivity ∧ P.parametersConsistent

theorem hydrogeologic_parameter_closed_from_evidence
    (P : HydrogeologicParameterPackage) (E : HydrogeologicParameterEvidence P) :
    HydrogeologicParameterClosed P := by
  exact And.intro E.porosityClosed
    (And.intro E.permeabilityClosed
      (And.intro E.storativityClosed
        (And.intro E.hydraulicConductivityClosed E.parametersConsistentClosed)))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse