class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773150031-ga78f91"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773150031-ga78f91/amp-darwin-arm64"
      sha256 "c08257dc44316ecdacd169103bb3bd7c712e9949a23bb19eec0a0d83705f5a50"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773150031-ga78f91/amp-darwin-x64"
      sha256 "534b1cb510f28dc9962546dc9a05c07f63d054761455d0a321db5fb0636327e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773150031-ga78f91/amp-linux-arm64"
      sha256 "54d5b32b22cf7ac63910271afdaaff2d4a6e9bfa40da3ce281e139223f6167a4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773150031-ga78f91/amp-linux-x64"
      sha256 "8139765d3191fa477d8ff29ae44ee69bb17fb5082a6a0d52d23799cf3c369e4f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
