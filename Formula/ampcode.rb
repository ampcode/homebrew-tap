class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794859247-g306079"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794859247-g306079/amp-darwin-arm64"
      sha256 "6851ed195f89052b09f0750508a40174c65015755c2473491040d46eced47fbc"
    else
      url "https://static.ampcode.com/cli/0.0.1794859247-g306079/amp-darwin-x64"
      sha256 "4aa483f63bff5ad130c294400f100eddf69f9478e5f29ddb344543c5dc9effed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794859247-g306079/amp-linux-arm64"
      sha256 "06e9f34bd360f135ce580781a77f65400ec8166bf7c21bcb14784453c17de9fb"
    else
      url "https://static.ampcode.com/cli/0.0.1794859247-g306079/amp-linux-x64"
      sha256 "86ff8267e85638d3d34db79747d1dafbbc96e644472d2dcf088b30c458859313"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
