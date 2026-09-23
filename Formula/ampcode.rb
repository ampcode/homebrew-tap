class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790150436-gfe2bc8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790150436-gfe2bc8/amp-darwin-arm64"
      sha256 "9d998baa8480c21721fdac36a762add9679c8050fac6a28197680f3ff353f569"
    else
      url "https://static.ampcode.com/cli/0.0.1790150436-gfe2bc8/amp-darwin-x64"
      sha256 "7874c2b6e452d6ba07d2facd6a9000053d12841d48afe6286b04f1e3cba31fee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790150436-gfe2bc8/amp-linux-arm64"
      sha256 "83bfb118531888d016ddb9114d6054232f1f48d751faa4467bef60b1d23b8984"
    else
      url "https://static.ampcode.com/cli/0.0.1790150436-gfe2bc8/amp-linux-x64"
      sha256 "06de965c65d4d569db2080bc486dbb701d7182a80f1910726b1f9e17dce48b99"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
