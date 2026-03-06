class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772784271-gd0be23"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772784271-gd0be23/amp-darwin-arm64"
      sha256 "c006429f994f78d77f382ca6ce1ddd677ddc2ff3d8ac0f06c5cc44505828c642"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772784271-gd0be23/amp-darwin-x64"
      sha256 "feeb752f6573c47c5cc019af846912aa432951208a7f1f2ad5e69b2392b5cdf7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772784271-gd0be23/amp-linux-arm64"
      sha256 "0685432e43cfe731cd7c4744a0e8fed8d5695e763891eb6be24d7bfb13e39b8a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772784271-gd0be23/amp-linux-x64"
      sha256 "f3e548081164573a3be7820980cd44853a59cfbbf764d0f61b5fbb4e7793de91"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
