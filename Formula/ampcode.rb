class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795032044-gbe7168"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795032044-gbe7168/amp-darwin-arm64"
      sha256 "64722428205284eed1d02668fba1ad3a94b5c578c5b7e5221a6f784ea926869b"
    else
      url "https://static.ampcode.com/cli/0.0.1795032044-gbe7168/amp-darwin-x64"
      sha256 "26f1a833637ff44504908a27154a3db53df59ebee3c607c138fb272456b51481"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795032044-gbe7168/amp-linux-arm64"
      sha256 "f999bd696fdaf755e6ee17078a2842b7c548d18298846148d6d6a64dd12c5321"
    else
      url "https://static.ampcode.com/cli/0.0.1795032044-gbe7168/amp-linux-x64"
      sha256 "f22892b686bc4daa95741f4e8c0ca5014a3694acdffa903de815170b63ffafde"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
