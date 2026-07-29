import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms {G : RiemannianCurvaturePackage} (C : CurvatureAnalyticCertificate G) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : RiemannianCurvatureClosed G

default

def CurvatureAnalyticCertificate.evidenceTerms {G : RiemannianCurvaturePackage} (C : CurvatureAnalyticCertificate G) : CurvatureAnalyticEvidenceTerms C := {
  riemannTensorSymmetries := C.riemannTensorSymmetriesClosed,
  bianchiIdentities := C.bianchiIdentitiesClosed,
  ricciContractionLaw := C.ricciContractionLawClosed,
  scalarTraceLaw := C.scalarTraceLawClosed,
  curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed,
  curvatureClosed := riemannian_curvature_closed_from_evidence G C.curvatureEvidence
}

structure HamiltonDeTurckEvidenceTerms {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G} (H : HamiltonDeTurckCertificate F) where
  gaugeChoice : H.gaugeChoice
  stronglyParabolicReduction : H.stronglyParabolicReduction
  deTurckVectorField : H.deTurckVectorField
  pullbackRecoversRicciFlow : H.pullbackRecoversRicciFlow
  uniquenessCompatibility : H.uniquenessCompatibility
  flowClosed : RicciFlowPDEClosed F

default

def HamiltonDeTurckCertificate.evidenceTerms {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G} (H : HamiltonDeTurckCertificate F) : HamiltonDeTurckEvidenceTerms H := {
  gaugeChoice := H.gaugeChoiceClosed,
  stronglyParabolicReduction := H.stronglyParabolicReductionClosed,
  deTurckVectorField := H.deTurckVectorFieldClosed,
  pullbackRecoversRicciFlow := H.pullbackRecoversRicciFlowClosed,
  uniquenessCompatibility := H.uniquenessCompatibilityClosed,
  flowClosed := ricci_flow_pde_closed_from_evidence F H.flowEvidence
}

structure ShortTimeEvidenceTerms {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G} {S : ShortTimeExistencePackage F} (C : ShortTimeAnalyticCertificate S) where
  parabolicRegularity : C.parabolicRegularity
  localExistenceInterval : C.localExistenceInterval
  uniquenessOnOverlap : C.uniquenessOnOverlap
  continuationCriterion : C.continuationCriterion
  shortTimeClosed : ShortTimeExistenceClosed S

default

def ShortTimeAnalyticCertificate.evidenceTerms {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G} {S : ShortTimeExistencePackage F} (C : ShortTimeAnalyticCertificate S) : ShortTimeEvidenceTerms C := {
  parabolicRegularity := C.parabolicRegularityClosed,
  localExistenceInterval := C.localExistenceIntervalClosed,
  uniquenessOnOverlap := C.uniquenessOnOverlapClosed,
  continuationCriterion := C.continuationCriterionClosed,
  shortTimeClosed := short_time_existence_closed_from_evidence S C.shortTimeEvidence
}

structure EntropyEvidenceTerms {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G} {S : ShortTimeExistencePackage F} {E : PerelmanEntropyPackage S} (C : EntropyAnalyticCertificate E) where
  conjugateHeatEquation : C.conjugateHeatEquation
  wFunctionalDefined : C.wFunctionalDefined
  muFunctionalDefined : C.muFunctionalDefined
  entropyMonotonicityFormula : C.entropyMonotonicityFormula
  reducedVolumeMonotonicity : C.reducedVolumeMonotonicity
  entropyClosed : PerelmanEntropyClosed E

default

def EntropyAnalyticCertificate.evidenceTerms {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G} {S : ShortTimeExistencePackage F} {E : PerelmanEntropyPackage S} (C : EntropyAnalyticCertificate E) : EntropyEvidenceTerms C := {
  conjugateHeatEquation := C.conjugateHeatEquationClosed,
  wFunctionalDefined := C.wFunctionalDefinedClosed,
  muFunctionalDefined := C.muFunctionalDefinedClosed,
  entropyMonotonicityFormula := C.entropyMonotonicityFormulaClosed,
  reducedVolumeMonotonicity := C.reducedVolumeMonotonicityClosed,
  entropyClosed := perelman_entropy_closed_from_evidence E C.entropyEvidence
}

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse
