# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.18.tgz"
      sha256 "33957d12e39122f90ff2617599425030ef34bfef402750a5fef82d21290f0f2e"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.18.tgz"
      sha256 "be89db0d40a42f2d0f25520057c86f4bf40777c0cddda87dace25d8ba389f5a6"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.18.tgz"
      sha256 "a23705956963c03fcd9cb746895b7decfc1cdc90c4e56556158f09305340cffb"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.18.tgz"
      sha256 "964a41b6447079407574367e8581d9dd85e28061319cffe0ce759e4b78cc96af"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
