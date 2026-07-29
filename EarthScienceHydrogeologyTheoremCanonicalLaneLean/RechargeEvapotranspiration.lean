import EarthScienceHydrogeologyTheoremCanonicalLaneLean.GroundwaterBasin

namespace HautevilleHouse
namespace EarthScienceHydrogeologyTheoremCanonicalLaneLean

structure RechargeEvapotranspirationPackage (G : GroundwaterBasinPackage) where
  rechargeRate : Prop
  evapotranspirationRate : Prop
  netFlux : Prop
  seasonality : Prop

structure RechargeEvapotranspirationEvidence (G : GroundwaterBasinPackage) (R : RechargeEvapotranspirationPackage G) where
  rechargeRateClosed : R.rechargeRate
  evapotranspirationRateClosed : R.evapotranspirationRate
  netFluxClosed : R.netFlux
  seasonalityClosed : R.seasonality

def RechargeEvapotranspirationClosed (G : GroundwaterBasinPackage) (R : RechargeEvapotranspirationPackage G) : Prop :=
  R.rechargeRate ∧ R.evapotranspirationRate ∧ R.netFlux ∧ R.seasonality

theorem recharge_evapotranspiration_closed_from_evidence
    (G : GroundwaterBasinPackage) (R : RechargeEvapotranspirationPackage G) (E : RechargeEvapotranspirationEvidence G R) :
    RechargeEvapotranspirationClosed G R := by
  exact And.intro E.rechargeRateClosed (And.intro E.evapotranspirationRateClosed (And.intro E.netFluxClosed E.seasonalityClosed))

end EarthScienceHydrogeologyTheoremCanonicalLaneLean
end HautevilleHouse
