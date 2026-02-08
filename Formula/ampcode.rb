class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770525767-g9adfc0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770525767-g9adfc0/amp-darwin-arm64"
      sha256 "93f67b9acbae49cf17c345b6164ea98c6d341015bb0bee83506c11fecdf9f8d7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770525767-g9adfc0/amp-darwin-x64"
      sha256 "c81735aaeec88cd024a8d31872738f9f80273eeb718c430c77a23c106e3a7778"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770525767-g9adfc0/amp-linux-arm64"
      sha256 "6b1f0974cd51acc1f3c27c7693e2176ad85e928167e738fa0c7844d87509cb18"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770525767-g9adfc0/amp-linux-x64"
      sha256 "23c95e2cfb6a32a7ed540fd9b4d8ba52064e2f39378b15163129b1a89397995b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
