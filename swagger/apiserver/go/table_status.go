/*
 * Chain Query
 *
 * The LBRY blockchain is read into SQL where important structured information can be extracted through the Chain Query API.
 *
 * API version: 0.1.0
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

// Contains an array of tables and their row count.
type TableStatus struct {
	Status []TableSize `json:"TableStatus,omitempty"`
}
