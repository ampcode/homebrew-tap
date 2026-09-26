class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790418058-gde3e20"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790418058-gde3e20/amp-darwin-arm64"
      sha256 "b37585e00c29153257965aa4acc635a6986017ebaefa0dab92f99dc3b4cdb558"
    else
      url "https://static.ampcode.com/cli/0.0.1790418058-gde3e20/amp-darwin-x64"
      sha256 "b81688211875b41745acdd35e2be72560e92b33e3ebfdb283d9d4eb5cf26f105"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790418058-gde3e20/amp-linux-arm64"
      sha256 "80600ba44d7acd8ab9c768bd4589c817e936010669c66b9f254cbfbff4794971"
    else
      url "https://static.ampcode.com/cli/0.0.1790418058-gde3e20/amp-linux-x64"
      sha256 "43c3e3d1b67e685cba115dc8674651cba6d9fcd1da47c63d41546e687b4554f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
