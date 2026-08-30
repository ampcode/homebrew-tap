class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788078999-gc21016"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788078999-gc21016/amp-darwin-arm64"
      sha256 "c5d73790f3e4855cf9dc091d15bc42b70ab9a52048a10a60ff04040f4b2c6c90"
    else
      url "https://static.ampcode.com/cli/0.0.1788078999-gc21016/amp-darwin-x64"
      sha256 "45ee11a0ecdc2251f484733c02c97ad51cfaea273cf740762768cac42581bae9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788078999-gc21016/amp-linux-arm64"
      sha256 "1ce071ba640055ece645d85ae1aebfbf63ed65f21689c629fea51b575dae6d68"
    else
      url "https://static.ampcode.com/cli/0.0.1788078999-gc21016/amp-linux-x64"
      sha256 "8cae574cee7b717cd096b7b8f8fc934086b163246fd561ed0eef68c89fbb81aa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
