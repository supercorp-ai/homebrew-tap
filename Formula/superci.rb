# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.20.3.tgz"
      sha256 "97cd21b205bb4d7b2587e23a00dd6c9b7498d7e8d7523daaa23cbfb27b0c4d7e"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.20.3.tgz"
      sha256 "f3f14dbade187507b7c9e05a993d321b53c287ad8e8a298ca7d3f1127c7e3cd7"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.20.3.tgz"
      sha256 "8fbec3e73e567cbbcc6b421c81993427d3a021f25655ef5a4705eef64c189f5d"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.20.3.tgz"
      sha256 "8e3ae52ea9a1f91f7426e710a0834879c27a14b49323631aee56cdc4f241cbb8"
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
