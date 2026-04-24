class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777072801-g023a81"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777072801-g023a81/amp-darwin-arm64"
      sha256 "ae24ba4f2da80eaea16b93ad1861fa3d04955cc46cc93a8e429eeea1b5894e4c"
    else
      url "https://static.ampcode.com/cli/0.0.1777072801-g023a81/amp-darwin-x64"
      sha256 "a9161916cd7e07edbd47a1bda5e907539a167d48e3c21b35298b49d031565557"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777072801-g023a81/amp-linux-arm64"
      sha256 "2632fdd5b420a0b50d4cd7b9c815b7bea2999b79cf2c16267899259a5b3749a6"
    else
      url "https://static.ampcode.com/cli/0.0.1777072801-g023a81/amp-linux-x64"
      sha256 "40c5c71645db4b447ca0c63dec157b3e3bbbb4d206adebe50766553769cc47fe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
