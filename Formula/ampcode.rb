class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779382276-g30f585"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779382276-g30f585/amp-darwin-arm64"
      sha256 "f1c378726902ee88f944105e108b73e49ea84bbce5e06b765bdb3e7eca03106d"
    else
      url "https://static.ampcode.com/cli/0.0.1779382276-g30f585/amp-darwin-x64"
      sha256 "3f4ed53ec09127e85e76258102b6a7408f3f89da0dd128203913590f190dfaed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779382276-g30f585/amp-linux-arm64"
      sha256 "eb72e73e953fafe9bb0efecbd0bc4dfe0aaa4654cd4d90a211cfeea5e76efc7c"
    else
      url "https://static.ampcode.com/cli/0.0.1779382276-g30f585/amp-linux-x64"
      sha256 "29be375aaf9c25cef34248e9e0010dcc8e54da452dc3d8c04614c116cbf32fee"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
