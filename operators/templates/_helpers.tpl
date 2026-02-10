{{- /*
  Select the enabled operators.
*/ -}}
{{- define "operators.enabled" -}}
  {{- $enabled := dict -}}
  {{- range $k, $v := .Values.operators -}}
    {{- if $v.enabled -}}
      {{- $enabled = merge $enabled (dict $k $v) -}}
    {{- end -}}
  {{- end -}}
  {{- $enabled | toYaml -}}
{{- end -}}