# Jailer

Simple command line to create jailed environments for processes to live in.

Currently only linux systems are supported

## Commands

   * Create jail

```
jailer create <name> <img>
```

  * Delete jail

```
jailer delete <name>
```

  * List jails

```
jailer list
```

  * Switch to jail

```
jailer <name>
```

  * Run command inside a jail

```
jailer <name> <cmd> <arg>*
```
