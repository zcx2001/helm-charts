{{/*
输出Chart Name 例子：phddns
*/}}
{{- define "common.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}


{{/*
输出Chart Name和Chart Version 例子：phddns-0.1.0
*/}}
{{- define "common.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}
