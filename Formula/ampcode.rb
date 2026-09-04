class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788508832-g0731a6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788508832-g0731a6/amp-darwin-arm64"
      sha256 "e2fcf762ffc299ff71d13df803362e51cf5972230e8b48c9d3d574c657923e64"
    else
      url "https://static.ampcode.com/cli/0.0.1788508832-g0731a6/amp-darwin-x64"
      sha256 "0a8733a1bfc5e9cdbb05ed72444822a3f495d545ff50c4ca7fcae7294dfd1e1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788508832-g0731a6/amp-linux-arm64"
      sha256 "d6d7aee7abb950ef75662de6d9b1a039ae7975982eaed1395a90c3334bbab0a3"
    else
      url "https://static.ampcode.com/cli/0.0.1788508832-g0731a6/amp-linux-x64"
      sha256 "13f9a5db5fe43ed37b30b62ca6821a433fc19f3369ec9f2bc4594995b4def377"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
