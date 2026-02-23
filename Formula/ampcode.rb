class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771837611-g353b96"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771837611-g353b96/amp-darwin-arm64"
      sha256 "f17287942f8d093561fc2d3f174633a5313d83b520bd5e1c23a761b3a163de76"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771837611-g353b96/amp-darwin-x64"
      sha256 "7b73cc3fb0a82e54427892c68b810632d56f8038d2db7e64beae1d84d5ff824b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771837611-g353b96/amp-linux-arm64"
      sha256 "822c467abb3d98fc5d793cb92720753dc3f495732c2bf4c0d506dcbe1f59646e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771837611-g353b96/amp-linux-x64"
      sha256 "a5f65db25e5dca72e15593a9ceb494b276fecd0585dfd3c3e547bc0799e5d3a8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
