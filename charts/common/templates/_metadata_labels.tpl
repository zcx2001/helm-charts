{{/*
输出完整Label
*/}}
{{- define "common.full-labels" -}}
helm.sh/chart: {{ include "common.chart" . }}
{{ include "common.labels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end }}


{{/*
输出普通Label
*/}}
{{- define "common.labels" -}}
app.kubernetes.io/name: {{ include "common.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
