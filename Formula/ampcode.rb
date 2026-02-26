class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772067340-g53cd9b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772067340-g53cd9b/amp-darwin-arm64"
      sha256 "77692fc75912d764d091d16ef988523efab00d732e711c0bfa0c07b44f3a7207"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772067340-g53cd9b/amp-darwin-x64"
      sha256 "5ce9253bbd5338a46f6ee4c266d93754936fd7e2211280127ec04650beece74f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772067340-g53cd9b/amp-linux-arm64"
      sha256 "5090bbfd43b0e5095d6fcaf10dde76aa9e7e18c60f7c79e93bb061328b2b5d06"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772067340-g53cd9b/amp-linux-x64"
      sha256 "9acf6353ce0829f9064cf661abe3594c297eece27f89bf8170a62efcf38f5478"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
