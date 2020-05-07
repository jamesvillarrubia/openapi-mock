package container

import (
	"github.com/getkin/kin-openapi/openapi3filter"
	"github.com/sirupsen/logrus"
	"net/http"
	"swagger-mock/internal/openapi/loader"
)

type Container interface {
	GetLogger() logrus.FieldLogger
	CreateSpecificationLoader() loader.SpecificationLoader
	CreateHTTPHandler(router *openapi3filter.Router) http.Handler
}
