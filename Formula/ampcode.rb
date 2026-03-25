class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774440528-g142dff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774440528-g142dff/amp-darwin-arm64"
      sha256 "b064333a6a510da3113a7b45f0c4c55d6ecfa56e1530868b5924c815f7080c97"
    else
      url "https://static.ampcode.com/cli/0.0.1774440528-g142dff/amp-darwin-x64"
      sha256 "6cdcd7a6b535562d12e7d0a0d9954504402806b503a6d4f7596c98a8816476ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774440528-g142dff/amp-linux-arm64"
      sha256 "f6459049fcc923997848acbec15784dc921107d8034691706ad6f4d4c2f84bdd"
    else
      url "https://static.ampcode.com/cli/0.0.1774440528-g142dff/amp-linux-x64"
      sha256 "c6830d28736fe76fc80ae3d4c9db254372d36685b2cecd6fd4c350c0cc7c8f33"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
