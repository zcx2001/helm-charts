{{/*
输出标准Label
*/}}
{{- define "common.labels.standard" -}}
helm.sh/chart: {{ include "common.names.chart" . }}
{{ include "common.labels.matchLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end -}}
{{- end -}}


{{/*
输出匹配Label
*/}}
{{- define "common.labels.matchLabels" -}}
app.kubernetes.io/name: {{ include "common.names.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
