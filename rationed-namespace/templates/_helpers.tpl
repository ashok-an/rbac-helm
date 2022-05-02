{{/* Generate basic labels */}}
{{- define "chart.commonLabels" }}
  labels:
{{- range $key, $val := .Values.team }}
    app.kubernetes.io/{{ $key }}: {{ $val | quote }}
{{- end }}
    app.kubernetes.io/lastUpdate: {{ now | htmlDate }}
    app.kubernetes.io/managedBy: helm
    app.kubernetes.io/releaseName: {{ .Release.Name | quote }}
    app.kubernetes.io/version: {{ .Release.Version | quote }}
{{- end }}

