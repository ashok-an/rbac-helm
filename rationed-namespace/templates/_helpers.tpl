{{/* Generate basic labels */}}
{{- define "chart.commonLabels" }}
  labels:
{{- range $key, $val := .Values.inputs }}
    app.kubernetes.io/{{ $key }}: {{ $val | quote }}
{{- end }}
    app.kubernetes.io/updateEpoch: {{ now | unixEpoch | quote }}
    app.kubernetes.io/managedBy: helm
    app.kubernetes.io/releaseName: {{ .Release.Name | quote }}
    app.kubernetes.io/version: {{ .Chart.Version | quote }}
{{- end }}

