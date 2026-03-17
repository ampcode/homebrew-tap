class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773705849-gda80e7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773705849-gda80e7/amp-darwin-arm64"
      sha256 "7349d3d163fd4c380ab6cdef2bd8cac9f3ba43494b211b5c7283d992f866b344"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773705849-gda80e7/amp-darwin-x64"
      sha256 "ac5e9d117f13bda176670132e5bbdd34cd14f69242bdf416f50c36c3f9fbf286"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773705849-gda80e7/amp-linux-arm64"
      sha256 "dcecedfe93f6e54769e0db00b10d76b5b8100a2a0a270253db81889de2297e09"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773705849-gda80e7/amp-linux-x64"
      sha256 "f3b60f39fca7bcef36d2bd0c0d7a0e200de5b158d3da45311ad4c7e9e5270916"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
