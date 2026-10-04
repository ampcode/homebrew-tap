class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791134020-gd49eb2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791134020-gd49eb2/amp-darwin-arm64"
      sha256 "5b045195fa188f3ac6e1f4ea737863024d236497ba412e4353bc7b605fc1e0b7"
    else
      url "https://static.ampcode.com/cli/0.0.1791134020-gd49eb2/amp-darwin-x64"
      sha256 "ba1d30c1c2d02898352594ef068e78ce2390f7c13b8327f5dbe54cb6a737e62b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791134020-gd49eb2/amp-linux-arm64"
      sha256 "ade60080a326c3300103673bf57241e2a0fbbe11b9d7b4e6bd3b303f39af6dfd"
    else
      url "https://static.ampcode.com/cli/0.0.1791134020-gd49eb2/amp-linux-x64"
      sha256 "f526116da0d24c90af9f7457ebe0df6808d77c2f6e0b450e30a510b65791e5d5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
