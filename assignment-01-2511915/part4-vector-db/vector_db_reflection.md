## Vector DB Use Case

A traditional keyword-based search would not be sufficient for searching large legal documents such as 500-page contracts. Keyword search relies on exact word matches and fails to capture the semantic meaning of queries. For example, if a lawyer searches for "termination clauses," a keyword search may miss relevant sections that use different wording but convey the same meaning.

Vector databases, on the other hand, use embeddings to understand the semantic similarity between queries and documents. This allows the system to retrieve relevant sections even if the exact keywords are not present. By converting both the query and document content into vectors, the system can compare their meanings rather than just matching words.

In this system, a vector database would store embeddings of contract sections. When a lawyer enters a query in plain English, the system converts it into an embedding and finds the most similar sections in the database. This enables more accurate, context-aware search results, making it highly suitable for legal document analysis.
