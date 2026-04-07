class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775578786-ge370f7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775578786-ge370f7/amp-darwin-arm64"
      sha256 "ece5bce279892401a23f04527c5519b5dca88c36057f7d214836c2bdab793ce7"
    else
      url "https://static.ampcode.com/cli/0.0.1775578786-ge370f7/amp-darwin-x64"
      sha256 "1ae5c7284460adacd871f6b016da133df4145acb7168df8f6fcf61b511707348"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775578786-ge370f7/amp-linux-arm64"
      sha256 "931f73df127150c343eb61dfd3da846f5c34e568cfc6889379bdc81fe7c5864f"
    else
      url "https://static.ampcode.com/cli/0.0.1775578786-ge370f7/amp-linux-x64"
      sha256 "7301939afb0b0e2a56bb51bf18d8b96dcca054474acab80ce5e695ad1781e2e7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
