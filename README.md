# Linked List Sorter

A PHP library providing sorted linked lists.

## Requirements

- Docker & Docker Compose

## Installation

### Development Setup

1. Clone the repository:
```bash
git clone https://github.com/dhrynko/linked-list-sorter.git
cd linked-list-sorter
```

2. Build and start Docker containers:
```bash
docker-compose build
docker-compose up -d
```

3. Install dependencies:
```bash
docker-compose run --rm sorter-php composer install
```

## Usage

```php
use LinkedListSorter\SortedLinkedList;

```

## Development

### Running Tests

Run PHPUnit tests:

```bash
docker-compose run --rm sorter-php composer test
```

### Code Quality Checks

#### PHP_CodeSniffer (PSR-12)

Check code style:
```bash
docker-compose run --rm sorter-php composer phpcs
```

Auto-fix code style issues:
```bash
docker-compose run --rm sorter-php composer phpcbf
```

#### PHPStan

Run static analysis:
```bash
docker-compose run --rm sorter-php composer phpstan
```

#### Run All Checks

Execute all quality checks at once:
```bash
docker-compose run --rm sorter-php composer check
```

### Security Audit

Check for known vulnerabilities in dependencies:
```bash
docker-compose run --rm sorter-php composer audit
```
