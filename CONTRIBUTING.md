# Contributing to Ulaa Chocolatey Package

Thank you for your interest in contributing! This document provides guidelines for contributing to the Ulaa Browser Chocolatey package.

## How to Contribute

### Reporting Issues

If you encounter problems with the package:
1. Check [existing issues](https://github.com/Ssri7774/ulaa_chocolatey/issues) first
2. Create a new issue with:
   - Clear description of the problem
   - Steps to reproduce
   - Your Windows version and Chocolatey version
   - Error messages or logs

### Suggesting Enhancements

Have ideas to improve the package? Open an issue with:
- Clear description of the enhancement
- Why it would be useful
- Examples of how it would work

### Pull Requests

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Make your changes**
   - Update version in `ulaa.nuspec` if needed
   - Update checksum in `tools/chocolateyinstall.ps1`
   - Test locally: `choco install ulaa -s . -y`
4. **Commit with clear messages**
   ```bash
   git commit -m "Description of changes"
   ```
5. **Push and create PR**
   ```bash
   git push origin feature/your-feature-name
   ```

## Package Update Process

### Automated Updates
- GitHub Actions checks daily for new Ulaa versions
- When detected, it automatically builds and commits changes
- Deployment to Chocolatey requires manual approval

### Manual Updates
If you need to update manually:
1. Check latest version at https://ulaa.com/
2. Update `<version>` in `ulaa.nuspec`
3. Update URL and checksum in `tools/chocolateyinstall.ps1`:
   ```powershell
   $url = 'https://downloads.zohocdn.com/ulaa-browser/release/win/Ulaa-Online-Installer-vX.X.X.msi'
   $file = Join-Path $env:TEMP 'ulaa-installer.msi'
   Invoke-WebRequest -Uri $url -OutFile $file
   Get-FileHash $file -Algorithm SHA256 | Select-Object -ExpandProperty Hash
   ```
4. Test locally before submitting PR

## Testing

Before submitting changes:
```powershell
# Build package
choco pack

# Test installation
choco install ulaa -s . -y

# Test uninstallation
choco uninstall ulaa -y
```

## Code of Conduct

- Be respectful and constructive
- Focus on the package and technical issues
- Help maintain a welcoming community

## Questions?

Open an issue or reach out to the maintainers.

## License

By contributing, you agree that your contributions will be licensed under the same terms as the project.
